import React from 'react';
import { Link } from 'react-router-dom';

const CheeseItem = ({ cheese }) => {
  let img = cheese.image_path !== undefined ?
<img id="cheese_image" src={cheese.image_path}/> : "";
  return (
    <div>
    <li className="chz-item-box">
      <ul>
        <Link to={`/cheeseboard/${cheese.id}`}>
          <li id="chz-name">{cheese.name}</li>
        </Link>
          {img}
        <li id="chz-brand">{cheese.brand}</li>
        <li id="chz-type">{cheese.category}</li>
        <li id="description">{cheese.description}</li>
      </ul>
    </li>


  </div>
  );
};

export default CheeseItem;







// const PokemonIndexItem = ({ pokemon }) => (
//   <li className="pokemon-index-item">
//     <Link to={`/pokemon/${pokemon.id}`}>
//       <span>{pokemon.id}</span>
//       <img src={pokemon.image_url} alt={pokemon.name} />
//       <span>{pokemon.name}</span>
//     </Link>
//   </li>
// );
//
// export default PokemonIndexItem;
